"use strict";

import { DatabaseSync } from "node:sqlite";

export function newPool_(config) {
  return function () {
    return {
      connect: () => {
        const db = new DatabaseSync(config.database);
        return Promise.resolve({
          release: () => db.close(),
          query: (q) =>
            Promise.resolve({
              rows: db.prepare(q.text).all(
                q.values.reduce((acc, value, index) => {
                  acc[index + 1] = value;
                  return acc;
                }, {}),
              ),
            }),
        });
      },
    };
  };
}

