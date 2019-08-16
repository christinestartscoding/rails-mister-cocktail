const initNavbar = () => {
  const navbar = document.querySelector('.navbar')

  if (navbar) {
    window.addEventListener("scroll", (event) => {
      if (window.scrollY > window.innerHeight) {
        navbar.classList.add('navbar-lewagon-white')
      }
    })
  }

  // CHECK THE SCROLL
  // ScrollY
  // window's inner height
}

export { initNavbar }
