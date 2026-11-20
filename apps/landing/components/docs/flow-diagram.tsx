export function FlowDiagram({ variant }: { variant: "architecture" | "dataflow" }) {
  if (variant === "architecture") {
    return (
      <figure className="doc-figure">
        <div className="doc-flow" role="group" aria-label="Architecture: UI to API to services to database">
          <div className="doc-flow-step">
            <span className="doc-flow-kicker">UI</span>
            <strong>Flutter app</strong>
            <small>Android, encrypted local store</small>
          </div>
          <div className="doc-flow-arrow" aria-hidden="true">→</div>
          <div className="doc-flow-step">
            <span className="doc-flow-kicker">API</span>
            <strong>NestJS</strong>
            <small>JWT, consent gate, OpenAPI</small>
          </div>
          <div className="doc-flow-arrow" aria-hidden="true">→</div>
          <div className="doc-flow-step">
            <span className="doc-flow-kicker">Services</span>
            <strong>Clinical modules</strong>
            <small>check-ins, journal, crisis, therapist</small>
          </div>
          <div className="doc-flow-arrow" aria-hidden="true">→</div>
          <div className="doc-flow-step">
            <span className="doc-flow-kicker">Data</span>
            <strong>Postgres + Redis</strong>
            <small>append-only records, queue</small>
          </div>
        </div>
        <figcaption>One client, one API, two stateful systems. The landing site is not in this path.</figcaption>
      </figure>
    );
  }

  return (
    <figure className="doc-figure">
      <div className="doc-flow doc-flow-vertical" role="group" aria-label="Data flow: input to processing to AI to output to feedback">
        <div className="doc-flow-step">
          <span className="doc-flow-kicker">Input</span>
          <strong>Check-in or journal</strong>
          <small>written locally first</small>
        </div>
        <div className="doc-flow-arrow" aria-hidden="true">↓</div>
        <div className="doc-flow-step">
          <span className="doc-flow-kicker">Processing</span>
          <strong>Encrypt, queue, replay</strong>
          <small>works without a network</small>
        </div>
        <div className="doc-flow-arrow" aria-hidden="true">↓</div>
        <div className="doc-flow-step">
          <span className="doc-flow-kicker">AI</span>
          <strong>Crisis tier</strong>
          <small>tier1 / tier2 / none</small>
        </div>
        <div className="doc-flow-arrow" aria-hidden="true">↓</div>
        <div className="doc-flow-step">
          <span className="doc-flow-kicker">Output</span>
          <strong>Task, plan, alert</strong>
          <small>human action, not generated advice</small>
        </div>
        <div className="doc-flow-arrow" aria-hidden="true">↓</div>
        <div className="doc-flow-step">
          <span className="doc-flow-kicker">Feedback</span>
          <strong>Access log + audit</strong>
          <small>every clinical read recorded</small>
        </div>
      </div>
      <figcaption>Positive crisis signal escalates to a human queue; it never becomes chat advice.</figcaption>
    </figure>
  );
}
