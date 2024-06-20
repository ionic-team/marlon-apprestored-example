import { MarlonAppRestore } from 'marlon-example-plugin';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    MarlonAppRestore.echo({ value: inputValue })
}
