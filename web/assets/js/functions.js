export function validateEmail(email) {
    var regExEmail =
        /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return regExEmail.test(String(email).toLowerCase());
}

export function validatePassword(password) {
    var regExPassword = new RegExp(
        '^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.{8,})'
    );
    return regExPassword.test(password);
}

export function validatePhone(phoneNumber) {
    var regExPhone = /^(?:(?:\+|00)33|0)\s*[1-9](?:[\s.-]*\d{2}){4}$/g;
    return regExPhone.test(phoneNumber);
}

export function validateName(name) {
    var regExName = new RegExp("^[a-zA-Z-' ]{2,254}$");
    return regExName.test(name);
}

export function getFlags(flag) {
    //return a tab with all flags
    flag = flag.split('flag=')[1];
    flag = flag.split('type=')[0];
    flag = flag.split('---');
    for (let i = 0; i < flag.length; i++) {
        flag[i] = flag[i].replace(/['"]+/g, '');
        flag[i] = flag[i].replace(/[=]+/g, '');
    }
    return flag;
}
