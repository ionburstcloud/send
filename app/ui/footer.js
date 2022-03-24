const html = require('choo/html');
const Component = require('choo/component');

class Footer extends Component {
  constructor(name, state) {
    super(name);
    this.state = state;
  }

  update() {
    return false;
  }

  createElement() {
    const translate = this.state.translate;

    // Add additional links from configuration if available
    var links = [];
    if (this.state != undefined && this.state.WEB_UI != undefined) {
      const WEB_UI = this.state.WEB_UI;

      if (WEB_UI.FOOTER_DONATE_URL != '') {
        links.push(html`
          <li class="m-2">
            <a href="${WEB_UI.FOOTER_DONATE_URL}" target="_blank">
              ${translate('footerLinkDonate')}
            </a>
          </li>
        `);
      }
      if (WEB_UI.FOOTER_CLI_URL != '') {
        links.push(html`
          <li class="m-2">
            <a href="${WEB_UI.FOOTER_CLI_URL}" target="_blank">
              ${translate('footerLinkCli')}
            </a>
          </li>
        `);
      }
      if (WEB_UI.FOOTER_DMCA_URL != '') {
        links.push(html`
          <li class="m-2">
            <a href="${WEB_UI.FOOTER_DMCA_URL}" target="_blank">
              ${translate('footerLinkDmca')}
            </a>
          </li>
        `);
      }
      if (WEB_UI.FOOTER_SOURCE_URL != '') {
        links.push(html`
          <li class="m-2">
            <a href="${WEB_UI.FOOTER_SOURCE_URL}" target="_blank">
              ${translate('footerLinkSource')}
            </a>
          </li>
        `);
      }
    } else {
      links.push(html`
        <li class="m-2">
          <a href="https://gitlab.com/jishf/send" target="_blank">
            ${translate('footerLinkSource')}
          </a>
        </li>
      `);
    }

    return html`
      <footer
        class="flex flex-col md:flex-row items-start w-full flex-none self-start p-6 md:p-8 font-medium text-xs text-grey-60 dark:text-grey-40 md:items-center justify-between"
      >
        <ul
          class="flex flex-col md:flex-row items-start md:items-center md:justify-start"
        >
          <li class="m-2">${translate('footerText')}</li>
        </ul>
        <ul
          class="flex flex-col md:flex-row items-start md:items-center md:justify-end"
        >
          ${links}
        </ul>
      </footer>
    `;
  }
}

module.exports = Footer;
