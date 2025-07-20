class Logger:
    def __init__(self, filepath):
        self.filepath = filepath

    def read_logs(self):
        with open(self.filepath, 'r') as file:
            return file.readlines()

    def last_n_entries(self, n=5):
        return self.read_logs()[-n:]

