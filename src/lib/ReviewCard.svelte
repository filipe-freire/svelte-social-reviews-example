<script lang="ts">
  export let userName: string;
  export let userImg: string;
  export let review: string;
  export let id: number;

  function checkAlignment(id: number) {
    if (id === 2) return `center`;
    if (id === 3) return `end`;
  }
</script>

<div class="card--comment {id !== 1 && 'gap'} {checkAlignment(id)} ">
  <div class="wrapper">
    <img src={userImg} alt="" />
    <div class="user--info">
      <p class="user--name">{userName}</p>
      <p class="user--type">Verified Buyer</p>
    </div>
  </div>
  <p>
    "{review}"
  </p>
</div>

<style>
  /* ---------- UTILITIES ---------- */
  .gap {
    margin-top: 2em;
  }
  .center {
    align-self: center;
  }
  .end {
    align-self: flex-end;
  }

  /* ---------- CLASSES ---------- */
  .card--comment {
    background-color: var(--accent-dark);
    padding: 2.5em;
    color: var(--white);
    font-size: 0.9em;
    border-radius: 10px;

    max-width: 600px;
  }

  .card--comment > p {
    margin-top: 2em;
    line-height: var(--lineheight);
  }

  .wrapper {
    display: flex;
    justify-content: flex-start;
    align-items: center;
  }

  .wrapper > img {
    max-width: 45px;
    border-radius: 50%;
  }

  .user--info {
    padding-left: 2em;
  }

  .user--name {
    font-weight: 700;
  }

  .user--type {
    padding-top: 0.2em;
    color: var(--accent-light);
  }

  @media (min-width: 1440px) {
    .card--comment {
      width: 30%;
      height: max-content;
    }

    .gap {
      margin-top: 0;
      margin-left: 2em;
    }
  }
</style>
