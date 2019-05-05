function check() {
    const xhr = new XMLHttpRequest();
    xhr.open('GET', '?json=true');
    xhr.onload = () => {
        if (xhr.status === 200) {
            const data = JSON.parse(xhr.responseText);
            for (var property in data) {
                if (data.hasOwnProperty(property)) {
                    const monster = data[property];
                    if (monster.View === true) {
                        document.getElementById(monster.Name).innerHTML = monster.Count;
                    }
                }
            }
        }
    };
    xhr.send();
}

check();
setInterval(check, 1000);