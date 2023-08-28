// Very simple script to generate products

import crypto from "crypto";
import { join } from "path";
import fs from "fs";
const range = (n) => [...Array(n).keys()];

const pickItem = (items) => items[Math.floor(Math.random() * items.length)];

const productFamilies = ["Phone", "Watch", "Glass"];
const categoriesPerFamily = {
  Phone: ["Smartphone", "2FA", "GPS"],
  Watch: ["Time", "Wearable"],
  Glass: ["Medical", "Wearable"],
};

const colors = [
  "red",
  "blue",
  "teal",
  "silver",
  "black",
  "gold",
  "transparent",
];

const memoryOptions = ["16KB", "2GB", "16GB", "32GB", "512GB", "1TB"];

const batteryOptions = ["small", "medium", "big", "infinite"];

const products = range(20).flatMap((yearRaw) => {
  year = yearRaw + 2001;
  let currentPrice = year * 100 * 1.5;
  return productFamilies.flatMap((family) =>
    colors.map((color) => {
      return {
        ean: crypto.randomUUID(),
        name: `i22 ${family} ${year}_${color}`,
        releaseYear: year,
        price: {
          current: year * 10 * 1.5,
          was:
            Math.random() <= 0.75 ? Math.floor(currentPrice * 1.15) : undefined,
        },
        categories: categoriesPerFamily[family],
        color: color,
        technicalDetails: {
          memory: pickItem(memoryOptions),
          battery: pickItem(batteryOptions),
        },
        stock: (yearRaw + 1) * Math.floor(Math.random() * 10),
      };
    })
  );
});

fs.writeFileSync(
  join(__dirname, "priv/products.json"),
  JSON.stringify(products, undefined, 2)
);
