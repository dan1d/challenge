import ReactOnRails from 'react-on-rails';

import Movies from '../bundles/app/components/Movies';

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  Movies,
});
