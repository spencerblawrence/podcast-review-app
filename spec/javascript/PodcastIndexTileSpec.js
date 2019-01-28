import PodcastIndexTile from "../../app/javascript/react/components/PodcastIndexTile";

describe("PodcastTile", () => {
  let wrapper;
  let props;

  beforeEach(() => {
    let props;

    let podcast = {
      name: "The Daily",
      publisher: "The New York Times",
      description:
        "This is how the news should sound. Twenty minutes a day, five days a week, hosted by Michael Barbaro and powered by New York Times journalism.",
      link: "https://www.nytimes.com/column/the-daily"
    };

    wrapper = mount(<PodcastIndexTile podcast={podcast} />);
  });

  it("confirms enzyme is working", () => {
    expect(true).toEqual(true);
  });

  it("renders a h2 tag with the article title", () => {
    expect(wrapper.find("h2").text()).toBe("The Daily");
  });

  it("renders a p tag with the article description", () => {
    expect(wrapper.find("p").text()).toBe(
      "This is how the news should sound. Twenty minutes a day, five days a week, hosted by Michael Barbaro and powered by New York Times journalism."
    );
  });
});
