

class MyTestApp():
    def __init__(self):
        self.menu_options = [
            self.exemple_function,
            self.another_exemple_function,
        ]

    @staticmethod
    def exemple_function():
        print("New exemple function!")

    @staticmethod
    def another_exemple_function():
        print("Another exemple function!")


app = MyTestApp()

if __name__ == "__main__":
    app.exemple_function()
