from robot.libraries.BuiltIn import BuiltIn


class SecondTestClass:

    def __init__(self):
        self.value = 'Second'
        BuiltIn().log_to_console('Initializing: ' + self.value)

    def change_value(self, new_value):
        self.value = new_value
        BuiltIn().log_to_console(self.value)

    def get_value(self):
        return self.value
