import ReviewTile from "../../app/javascript/react/components/ReviewTile";

describe("PodcastTile", () => {
  let wrapper;

  beforeEach(() => {
    let review = {
      id: 15,
      rating: 5,
      body: "Wonderful and engaging podcast"
    };

    wrapper = mount(<ReviewTile review={review} />);
  });

  it("renders a p tag with the rating", () => {
    expect(
      wrapper
        .find("p")
        .first()
        .text()
    ).toBe("Rating: 5");
  });

  it("renders a p tag with the rating", () => {
    expect(
      wrapper
        .find("p")
        .last()
        .text()
    ).toBe("Review: Wonderful and engaging podcast");
  });
});
