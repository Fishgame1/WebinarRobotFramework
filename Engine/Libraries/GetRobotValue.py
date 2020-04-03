from robot.libraries.BuiltIn import BuiltIn


class GetRobotValue:

    @staticmethod
    def get_variable(text):
        return BuiltIn().get_variable_value('${%s}' % text)

    @staticmethod
    def get_variable_by_full_text(text):
        return BuiltIn().get_variable_value(text)
