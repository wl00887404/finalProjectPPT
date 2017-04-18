class radioSelect {
  constructor(where, options) {
    this.select = Array.from(where.querySelectorAll("select"))
    this.options = options
    this.anwser = []
    this.select.forEach((s, i) => {
      s.onchange = (e) => {
        this.anwser[i] = e.target.value
        this.updateOption()
      }
    })
    this.updateOption()
  }
  updateOption() {
    let option = "<option>Please Select</option>"
    this.select.forEach((s, i) => {
      s.innerHTML = option + this.options
        .filter(c => this.anwser.slice(0, i).indexOf(c.value) == -1)
        .map(c => {
          let selected = this.anwser[i] == c.value ? "selected" : ""
          return `<option value=${c.value} ${selected}>${c.name}</option>`
        })
    })
  }
}
