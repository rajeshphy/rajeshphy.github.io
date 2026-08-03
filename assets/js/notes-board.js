(() => {
  const mobileView = window.matchMedia("(max-width: 640px)");
  const boards = document.querySelectorAll(".notes-auto-board");

  const arrangeBoard = (board) => {
    const more = board.querySelector(":scope > .board-more");
    const panel = more?.querySelector(".board-more-panel");

    if (!more || !panel) return;

    const folders = Array.from(
      board.querySelectorAll(".semester-box[data-board-order]")
    ).sort(
      (first, second) =>
        Number(first.dataset.boardOrder) - Number(second.dataset.boardOrder)
    );

    const mobileLimit = Number(board.dataset.mobileVisibleLimit) || 2;
    const desktopLimit = Number(board.dataset.desktopVisibleLimit) || 8;
    const visibleLimit = mobileView.matches ? mobileLimit : desktopLimit;

    folders.forEach((folder, index) => {
      if (index < visibleLimit) {
        board.insertBefore(folder, more);
      } else {
        panel.append(folder);
      }
    });

    const extraCount = Math.max(folders.length - visibleLimit, 0);
    const count = more.querySelector("summary strong");

    if (count) count.textContent = `${extraCount} more`;
    more.hidden = extraCount === 0;

    if (extraCount === 0) more.open = false;
  };

  const arrangeBoards = () => boards.forEach(arrangeBoard);

  arrangeBoards();
  mobileView.addEventListener("change", arrangeBoards);
})();
