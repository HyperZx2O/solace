# ADR-001: One deployable NestJS monolith

- Status: Accepted (2026-10-24)
- Deciders: backend owner
- Related: architecture.md, OD-7

## Context

Solace needs auth, consent, surveys, crisis detection, escalation timers,
therapist views, journals, sync and privacy operations. The MVP has one Android
client and a small team. Latency on the crisis path is a safety property, not an
optimisation.

## Decision

Ship one NestJS application with module boundaries (`auth`, `consent`, `crisis`,
`journal`, `tasks`, `therapist`, `privacy`, `ai`, `notifications`). Modules talk
through injected services, never through each other's repositories. Split a
module out only when a measured scaling, failure-isolation or compliance
boundary justifies it.

## Consequences

- A single deploy, one config surface, one migration stream, one log stream.
- The crisis path has no internal network hop.
- Module boundaries must be enforced by review, since the compiler will happily
  let one module import another's internals.
- A crash takes down every feature at once, so readiness checks and the
  escalation reconciler (ADR-3) carry more weight.
- Queue consumers live in the same process at MVP; a dedicated worker process is
  a deployment change, not a rewrite.
