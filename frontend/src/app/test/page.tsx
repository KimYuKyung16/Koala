'use client'

import { loginFetcher } from '@/app/apis/login'

export default function Test() {
  const handleLogin = async () => {
    console.log('login api사용 Test - cors 테스트용')
    try {
      const data = await loginFetcher('http://localhost:8080/api/users/login', {
        login_id: 'test',
        password: '1234',
      })
      console.log(data)
    } catch (err) {
      console.log(err)
    }
  }

  return (
    <div className="inline-block relative w-auto">
      <button className="bg-white p-10" onClick={handleLogin}>
        클릭해서 cors 테스트 해보세요
      </button>
    </div>
  )
}
