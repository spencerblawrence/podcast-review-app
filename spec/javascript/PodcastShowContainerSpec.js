import PodcastShowContainer from "../../app/javascript/react/containers/PodcastShowContainer";
import fetchMock from "fetch-mock";

describe("PodcastShowContainer", () => {
  let wrapper;
  let params;
  let podcast;

  beforeEach(() => {
    params = { id: 1 };
    let podcast = {
      podcast: {
        id: 1,
        name: "The Daily",
        publisher: "The New York Times",
        description:
          "This is how the news should sound. Twenty minutes a day, five days a week, hosted by Michael Barbaro and powered by New York Times journalism.",
        link: "https://www.nytimes.com/column/the-daily",
        reviews: [
          {
            id: 1,
            rating: 5,
            body:
              "I was surprised to see this had not been reviewed as never a week goes by where I don't look forward to listening to this podcast and couldn't imagine other NPR listeners didn't feel the same. This podcast provides a great insight to movie making from all aspects; producers, directors, writers and actors. Every weeks is different and hugely interesting and entertaining. Of course there are the critics but there are always critics... Have a listen!"
          }
        ]
      }
    };
    fetchMock.get("/api/v1/podcasts/1", {
      status: 200,
      body: podcast
    });

    wrapper = mount(<PodcastShowContainer params={params} />);
  });

  afterEach(fetchMock.restore);

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
      expect(
        wrapper
          .find("p")
          .first()
          .text()
      ).toBe("The New York Times");
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
