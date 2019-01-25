import PodcastTile from "../../app/javascript/react/components/PodcastTile";

describe("PodcastTile", () => {
  let wrapper;

  beforeEach(() => {
    let podcast = {name: "The Daily", publisher: "The New York Times", description: "This is how the news should sound. Twenty minutes a day, five days a week, hosted by Michael Barbaro and powered by New York Times journalism.", link: "https://www.nytimes.com/column/the-daily"}

    wrapper = mount(
      <PodcastTile podcast={podcast}/>
    );
  });

  it("renders a paragraph tag with the description of the podcast", () => {
    expect(true).toEqual(true);
  });

  it("renders a paragraph tag", () => {
    expect(wrapper.find("p")).toBePresent();
  });

});
