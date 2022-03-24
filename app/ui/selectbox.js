const html = require('choo/html');

module.exports = function(selected, options, translate, changed, htmlId) {
  function choose(event) {
    if (event.target.value != selected) {
      console.log(
        'Selected new value from dropdown',
        htmlId,
        ':',
        selected,
        '->',
        event.target.value
      );
      changed(event.target.value);
    }
  }

  return html`
    <select
      id="${htmlId}"
      class="appearance-none cursor-pointer border rounded bg-purple-ibc3 hover:border-orange-ibc2 focus:border-orange-ibc2 pl-1 pr-8 py-1 my-1 h-8 dark:bg-purple-ibc3"
      data-selected="${selected}"
      onchange="${choose}"
    >
      ${options.map(
        value =>
          html`
            <option value="${value}" ${value == selected ? 'selected' : ''}>
              ${translate(value)}
            </option>
          `
      )}
    </select>
  `;
};
