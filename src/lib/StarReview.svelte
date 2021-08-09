<script lang="ts">
  export let company: string;
  export let rating: number;
  export let id: number;

  function checkAlignment(id: number) {
    if (id === 2) return `center`;
    if (id === 3) return `end`;
  }
</script>

<div class="card-rating {id !== 1 && 'gap'} {checkAlignment(id)} ">
  <div class="star-rating">
    {#each Array(rating) as _}
      <img src="./src/assets/icon-star.svg" alt="" />
    {/each}
  </div>
  <p class="card--text">Rated {rating} Stars in {company}</p>
</div>

<style>
  /* ---------- UTILITIES ---------- */
  .gap {
    margin-top: 1em;
  }
  .center {
    align-self: center;
  }
  .end {
    align-self: flex-end;
  }

  /* ---------- CLASSES ---------- */
  .card-rating {
    background-color: var(--secondary--light);
    padding: 1em;
    border-radius: 10px;

    max-width: 500px;
  }

  .star-rating {
    display: flex;
    justify-content: center;

    margin: 0 auto;
  }
  .star-rating > img {
    padding: 0.2em;
  }

  .card--text {
    font-weight: var(--fontweight-l);
    font-size: 0.9em;
    text-align: center;
    padding-top: 0.8em;
  }

  @media (min-width: 1440px) {
    .card-rating {
      width: 500px;
      display: flex;
      justify-content: space-around;
    }

    .star-rating {
      margin: 0;
    }
    .star-rating > img {
      padding: 0.3em;
    }

    .card--text {
      padding-top: 0;
    }
  }
</style>
