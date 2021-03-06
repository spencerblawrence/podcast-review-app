import React from "react";
import { Router, browserHistory, Route, IndexRoute } from "react-router";
import PodcastsIndexContainer from "../containers/PodcastsIndexContainer";
import PodcastShowContainer from "../containers/PodcastShowContainer";

export const App = props => {
  return (
    <Router history={browserHistory}>
      <Route path="/" component={PodcastsIndexContainer} />
      <Route path="/podcasts/:id" component={PodcastShowContainer} />
      <Route path="/podcasts/:id/edit" component={PodcastShowContainer} />
    </Router>
  );
};         

export default App;
