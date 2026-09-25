/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  darkMode: 'class',
  theme: {
    extend: {
      colors: {
        soc: {
          main: '#0B0F19',
          secondary: '#111827',
          card: '#161F30',
          elevated: '#1C263B',
          border: '#24324A',
          borderHover: '#38BDF8',
          cyan: '#a6a7a8',
          blue: '#02050b',
          ai: '#8B5CF6',
          critical: '#EF4444',
          high: '#F97316',
          medium: '#FBBF24',
          low: '#dceae5',
          textPri: '#F8FAFC',
          textSec: '#94A3B8',
          textMuted: '#64748B',
        }
      },
      fontFamily: {
        sans: ['Inter', 'system-ui', '-apple-system', 'BlinkMacSystemFont', 'Segoe UI', 'Roboto', 'sans-serif'],
        heading: ['Plus Jakarta Sans', 'Inter', 'system-ui', 'sans-serif'],
        mono: ['JetBrains Mono', 'ui-monospace', 'SFMono-Regular', 'Menlo', 'monospace'],
      },
      boxShadow: {
        'card-soft': '0 4px 20px -2px rgba(0, 0, 0, 0.4)',
        'subtle': '0 1px 3px 0 rgba(0, 0, 0, 0.25)',
      }
    },
  },
  plugins: [],
}
