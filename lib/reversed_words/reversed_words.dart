import "package:test/test.dart";

String reverseWords(String str) {
  return str.split(" ").reversed.join(" ");
}

void main() {
  group("Sample tests", () {
    test("hello world!", () => expect(reverseWords("hello world!"), "world! hello"));
    test("yoda doesn't speak like this", () => expect(reverseWords("yoda doesn't speak like this"), "this like speak doesn't yoda"));
    test("foobar", () => expect(reverseWords("foobar"), "foobar"));
    test("kata editor", () => expect(reverseWords("kata editor"), "editor kata"));
    test("row row row your boat", () => expect(reverseWords("row row row your boat"), "boat your row row row"));
    test("", () => expect(reverseWords(""), ""));
  });
}
