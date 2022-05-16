function myChangeHandler() {
    //window.open(this.options[this.selectedIndex].value);
    window.location.href = this.options[this.selectedIndex].value;
    this.form.submit();
}