window.onload = () =>{
    const icons = document.querySelectorAll('i.icon-password')
    const toggleInputType = (ev) =>{
        ev.target.classList.toggle('fa-eye-slash');
        var lengthI = (ev.target.parentNode.children.length)-1;
        console.log("lengthI",lengthI);
        const input = ev.target.parentNode.children[lengthI-1]; // ciblera tjrs l'avant dernier elt qui est le input
        //console.log(input);
        input.type === "password" ? input.type = "text" : input.type = "password";
    }
    const setupListeners = () =>{
       for (let index = 0; index < icons.length; index++) {
           const icon = icons[index];
           icon.onclick = toggleInputType
       }
    }
    setupListeners();
}