import type { Metadata } from "next";
import { Fraunces, Noto_Sans_Bengali, Onest } from "next/font/google";
import type { ReactNode } from "react";
import { RegisterSW } from "@/components/register-sw";
import "./globals.css";
import "./flowstate.css";

const onest = Onest({
  subsets: ["latin"],
  weight: ["400", "500"],
  variable: "--font-onest",
  display: "swap",
});

const fraunces = Fraunces({
  subsets: ["latin"],
  weight: ["400", "500"],
  variable: "--font-serif",
  display: "swap",
});

const bengali = Noto_Sans_Bengali({
  subsets: ["bengali"],
  weight: ["400", "500"],
  variable: "--font-bn",
  display: "swap",
});

export const metadata: Metadata = {
  title: "Solace",
  description: "Your therapist works with you once a week. We work with you every day.",
};

export default function RootLayout({ children }: { children: ReactNode }) {
  return (
    <html lang="en" className={`${onest.variable} ${fraunces.variable} ${bengali.variable}`} suppressHydrationWarning>
      <body>
        <RegisterSW />
        {children}
      </body>
    </html>
  );
}
