const html = require('choo/html');
const assets = require('../../common/assets');
const { bytes } = require('../utils');

module.exports = function() {
  return function(state, emit, close) {
    const DAYS = Math.floor(state.LIMITS.MAX_EXPIRE_SECONDS / 86400);
    let submitting = false;
    return html`
      <send-signup-dialog
        class="flex flex-col justify-center my-16 md:my-0 px-8 md:px-24 w-full h-full"
      >
        <img src="${assets.get('master-logo.svg')}" class="h-16 mt-1 mb-4" />
        <section class="flex flex-col flex-shrink-0 self-center">
          <h1 class="text-3xl font-bold text-center">
            ${state.translate('accountBenefitTitle')}
          </h1>
          <ul
            class="leading-normal list-disc text-grey-80 my-2 mt-4 pl-4 md:self-center dark:text-grey-40"
          >
            <li>
              ${state.translate('accountBenefitLargeFiles', {
                size: bytes(state.LIMITS.MAX_FILE_SIZE)
              })}
            </li>
            <li>${state.translate('accountBenefitDownloadCount')}</li>
            <li>
              ${state.translate('accountBenefitTimeLimit', { count: DAYS })}
            </li>
            <li>${state.translate('accountBenefitSync')}</li>
          </ul>
        </section>
        <section class="flex flex-col flex-grow m-4 md:self-center md:w-128">
          <form onsubmit=${submitEmail} data-no-csrf>
            <input
              id="email-input"
              type="email"
              class="hidden border rounded-lg w-full px-2 py-1 h-12 mb-3 text-lg text-grey-70 leading-loose dark:bg-purple-ibc2 dark:text-white"
              placeholder=${state.translate('emailPlaceholder')}
            />
            <input
              class="btn rounded-lg w-full flex flex-shrink-0 items-center justify-center"
              value="${state.translate('signInOnlyButton')}"
              title="${state.translate('signInOnlyButton')}"
              id="email-submit"
              type="submit"
            />
          </form>
          ${state.user.loginRequired
            ? ''
            : html`
                <button
                  class="my-3 link-blue font-medium"
                  title="${state.translate('deletePopupCancel')}"
                  onclick=${cancel}
                >
                  ${state.translate('deletePopupCancel')}
                </button>
              `}
        </section>
      </send-signup-dialog>
    `;

    function emailish(str) {
      if (!str) {
        return false;
      }
      // just check if it's the right shape
      const a = str.split('@');
      return a.length === 2 && a.every(s => s.length > 0);
    }

    function cancel(event) {
      close(event);
    }

    function submitEmail(event) {
      event.preventDefault();
      if (submitting) {
        return;
      }
      submitting = true;

      const el = document.getElementById('email-input');
      const email = el.value;
      emit('login', emailish(email) ? email : null);
    }
  };
};
