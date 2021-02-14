window.addEventListener('DOMContentLoaded', () => {
 // const logout_button = document.querySelector('#logout_button')
  const token = document.querySelector('meta[name="csrf-token"]').getAttribute('content')
  liff.init({
    liffId: "1655667657-MYZ0lbZ4"
  })
  .then(() => {
    if (!liff.isLoggedIn()) {
      liff.login()
    }
    let idToken = liff.getIDToken()
    let body =`idToken=${idToken}`
    let request = new Request('/user_sessions', {
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded; charset=utf-8',
        'X-CSRF-Token': token
      },
      method: 'POST',
      body: body
    });
    fetch(request)
  })
});
