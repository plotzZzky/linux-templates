import { Inter } from 'next/font/google'
import './page.css'


const inter = Inter({ subsets: ['latin'] })

export const metadata = {
  title: 'Site name',
}

export default function RootLayout({ children }) {
  return (
    <>
      {children}
    </>
  )
}
