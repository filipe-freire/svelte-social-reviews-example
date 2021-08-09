<script lang="ts">
  import ReviewCard from "./lib/ReviewCard.svelte";
  import StarReview from "./lib/StarReview.svelte";

  interface UserReview {
    id: number;
    userName: string;
    userImg: string;
    review: string;
  }
  interface StarReview {
    id: number;
    company: string;
    rating: number;
  }

  const userReviews: UserReview[] = [
    {
      id: 1,
      userName: "Colton Smith",
      userImg: "./../src/assets/image-colton.jpg",
      review: `We needed the same printed design 
      as the one we had ordered a week prior. 
      Not only did they find the original order, 
      but we also received it in time. Excellent!`,
    },
    {
      id: 2,
      userName: "Irene Roberts",
      userImg: "./../src/assets/image-irene.jpg",
      review: `Customer service is always excellent 
      and very quick turn around. Completely delighted 
      with the simplicity of the purchase and the speed of delivery.`,
    },
    {
      id: 3,
      userName: "Anne Wallace",
      userImg: "./../src/assets/image-anne.jpg",
      review: `Put an order with this company 
      and can only praise them for the very 
      high standard. Will definitely use them again 
      and recommend them to everyone!`,
    },
  ];

  const startRatings: StarReview[] = [
    {
      id: 1,
      company: "Reviews",
      rating: 5,
    },
    {
      company: "Report Guru",
      rating: 5,
      id: 2,
    },
    {
      company: "BestTech",
      rating: 5,
      id: 3,
    },
  ];
</script>

<main>
  <div class="flex-container">
    <header>
      <p class="title">10,000+ of our users love our products.</p>

      <p class="service-info">
        We only provide great products combined with excellent customer service.
        See what our satisfied customers are saying about our services.
      </p>
    </header>

    <section class="section--star-reviews">
      {#each startRatings as { company, rating, id }}
        <StarReview {company} {id} {rating} />
      {/each}
    </section>
  </div>

  <section class="user-comments">
    {#each userReviews as { userImg, userName, review, id }}
      <ReviewCard {userImg} {userName} {review} {id} />
    {/each}
  </section>

  <div class="attribution">
    Challenge by
    <a href="https://www.frontendmentor.io?ref=challenge" target="_blank"
      >Frontend Mentor</a
    >. Coded by
    <a href="https://filipe-freire-webdev.vercel.app" target="_blank"
      >Filipe Freire</a
    >.
  </div>
</main>

<style>
  main {
    min-height: 100vh;
    display: grid;
    place-items: center;
    max-width: 1440px;
    margin: 0 auto;
  }
  .title {
    padding: 2.5em 0.5em 1em;
    font-size: 2em;
    text-align: center;
    color: hsl(300, 43%, 22%);
    font-family: var(--font-main);
    font-weight: var(--fontweight-l);
  }

  .service-info {
    padding: 0em 1em 1em;
    text-align: center;
    line-height: var(--lineheight);
    color: var(--accent-dark);
  }

  .section--star-reviews {
    margin: 0 auto;
    max-width: 500px;
  }
  .section--star-reviews,
  .user-comments {
    padding: 1em;
    min-height: 350px;
  }

  .attribution {
    font-weight: 300;
    padding: 1em 1em 2em;
  }

  @media (min-width: 1440px) {
    header {
      max-width: 40%;
    }

    .title {
      font-size: 3.5em;
      padding: 15px;
    }

    .title,
    .service-info {
      text-align: left;
    }

    .section--star-reviews {
      max-width: 700px;
      flex-grow: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .user-comments {
      display: flex;
      justify-content: center;
      height: 300px;
    }

    .attribution {
      font-size: 11px;
      text-align: center;
    }
    .attribution a {
      color: hsl(228, 45%, 44%);
    }
  }
</style>
