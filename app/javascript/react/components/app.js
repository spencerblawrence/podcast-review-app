import React from "react";
import { Router, browserHistory, Route, IndexRoute } from "react-router";
import PodcastContainer from "../containers/PodcastContainer";
import PodcastShowContainer from "../containers/PodcastShowContainer";

export const App = props => {
  return (
    <Router history={browserHistory}>
      <Route path="/" component={PodcastContainer} />
      <Route path="/podcasts/:id" component={PodcastShowContainer} />
    </Router>
  );
};

export default App;
