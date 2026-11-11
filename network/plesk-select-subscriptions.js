// EN: Paste into the browser console on a Plesk page that has the "subscriptionList-search-unselected"
//     search box (e.g. a migration/selection screen). It searches each domain and clicks the match.
// TR: "subscriptionList-search-unselected" arama kutusu olan bir Plesk sayfasında tarayıcı konsoluna yapıştırın.
//     Her alan adını arar ve eşleşeni tıklar.
// Fill the list below with your own domains; the HTML ids/classes may change between Plesk versions.

const sitesToMigrate = [
  "example.com",
  "example.org",
  "example.net",
];

const searchInput = document.getElementById("subscriptionList-search-unselected");
let index = 0;

function searchAndSelectNextSite() {
  if (index >= sitesToMigrate.length) {
    console.log("All specified sites have been processed.");
    return;
  }

  searchInput.value = sitesToMigrate[index];
  searchInput.dispatchEvent(new Event("input"));
  searchInput.dispatchEvent(new Event("change"));
  searchInput.dispatchEvent(new KeyboardEvent("keyup", { key: "Enter" }));

  // wait for the filtered list to render / filtrelenmiş listenin gelmesini bekle
  setTimeout(() => {
    const match = Array.from(document.querySelectorAll("span.edls-text"))
      .find((span) => span.textContent.trim() === sitesToMigrate[index]);

    if (match) {
      match.click();
      console.log(`Clicked on: ${sitesToMigrate[index]}`);
    } else {
      console.log(`Site not found: ${sitesToMigrate[index]}`);
    }
    index++;
    searchAndSelectNextSite();
  }, 1000);
}

searchAndSelectNextSite();
