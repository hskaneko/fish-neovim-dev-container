import configConventional from "@commitlint/config-conventional";
const { rules } = configConventional;

export default {
  extends: ["@commitlint/config-conventional"],
  rules: {
    "type-enum": (() => {
      const defaultTypes = rules["type-enum"][2];

      return [
        2,
        "always",
        [...defaultTypes.filter((type) => type !== "feat"), "enc"].sort(),
      ];
    })(),
  },
};
