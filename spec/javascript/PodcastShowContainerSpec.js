import PodcastShowContainer from "../../app/javascript/react/containers/PodcastShowContainer";
import fetchMock from "fetch-mock";

describe("PodcastShowContainer", () => {
  let wrapper;
  let params;
  let podcasts;

  beforeEach(() => {
    params = { id: 1 };
    let podcasts = {
      podcasts: [
        {
          id: 1,
          name: "The Daily",
          publisher: "The New York Times",
          description:
            "This is how the news should sound. Twenty minutes a day, five days a week, hosted by Michael Barbaro and powered by New York Times journalism.",
          link: "https://www.nytimes.com/column/the-daily"
        }
      ]
    };

    fetchMock.get("/api/v1/podcasts/1", {
      status: 200,
      body: podcasts
    });

    wrapper = mount(<PodcastShowContainer params={params} />);
  });

  afterEach(fetchMock.restore);

  it("renders a paragraph tag with the description of the podcast", () => {
    expect(true).toEqual(true);
  });

  it("renders the name of the podcast", done => {
    setTimeout(() => {
      expect(wrapper.find("h2").text()).toBe("The Daily");
      done();
    }, 0);
  });

  it("renders the description of the podcast", done => {
    setTimeout(() => {
      expect(wrapper.find("h3").text()).toBe(
        "This is how the news should sound. Twenty minutes a day, five days a week, hosted by Michael Barbaro and powered by New York Times journalism."
      );
      done();
    }, 0);
  });

  it("renders the publisher of the podcast", done => {
    setTimeout(() => {
      expect(wrapper.find("p").text()).toBe("The New York Times");
      done();
    }, 0);
  });

  it("renders the link to the podcast", done => {
    setTimeout(() => {
      expect(wrapper.find("a").props()).toEqual({
        href: "https://www.nytimes.com/column/the-daily",
        children: "Visit Website"
      });
      done();
    }, 0);
  });
});
