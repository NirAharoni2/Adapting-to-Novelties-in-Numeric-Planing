def files_are_equal(file1, file2):
    def normalize(file):
        with open(file, 'rb') as f:
            text = f.read().decode('utf-8').replace('\r', '')
            # Normalize lines: strip trailing spaces, drop purely blank lines
            lines = [line.rstrip() for line in text.splitlines()]
            return '\n'.join(lines)

    return normalize(file1) == normalize(file2)

