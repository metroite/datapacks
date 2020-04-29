def pause():
    programPause = input("Press <ENTER> to continue...")
print("\n")
print("This script will turn any Datapack into a One Command!\nWith the help of any command combiner like this one from MrGarreto:\nhttps://mrgarretto.com/cmdcombiner\n\nRefrecing functions of different datapacks is not supported. Merge the datapacks' \"data\" folder and \"tick.json\" and/or \"load.json\" to achieve it anyways.\n\n\n\nPython Script \"Datapack to One Command\" by Metroite:\nhttps://www.metroite.de/\nhttps://www.youtube.com/channel/UCfdVx0XNqSwuoftDcLgiXfg\n\n\n\n\n\n")
class Tick:
    path = "data\\minecraft\\tags\\functions\\tick.json"
    exist = False
    namespaces = []
    functions = []
    function_paths = []
class Load:
    path = "data\\minecraft\\tags\\functions\\load.json"
    exist = False
    namespaces = []
    functions = []
    function_paths = []
### Define working directory
class Directory:
    get = ""
    def check():
        Tick.exist = os.path.exists(Tick.path)
        Load.exist = os.path.exists(Load.path)
        if Tick.exist == False:
            if Load.exist == False:
                return False
            else:
                return True
    def change():
        provided_path = input('Enter path to Datapack:')
        provided_path_exist = os.path.isdir(provided_path)
        Directory.get = provided_path
        if provided_path_exist == True:
            os.chdir(provided_path)
            if Directory.check() == False:
                print("The given path is not a Datapack!")
                os.chdir(abs_path)
                print("\n")
                Directory.change()
        else:
            print("The given path is not a directory!")
            print("\n")
            Directory.change()
import os
abs_path = os.path.abspath(os.path.dirname(__file__))
if Directory.check() == False:
    print("Neither \"tick.json\" nor \"load.json\" have been found. Launch this file from the folder of a Datapack, so it can find", Tick.path, "and/or", Load.path, "\n")
    Directory.change()
else:
    pause()
### STARTING ASCII Art by https://code.sololearn.com/csgmsCnnVGJa/
get_string = "Metroite"
print("\n\n")
for chars in range(0, len(get_string)):
    character = get_string[chars].upper()
    if character == 'A':
        print("""\
      @@@@
     @    @
     @@@@@@
     @    @
     @    @  \n\n""")
    elif character == 'B':
        print("""\
     @@@@@
     @    @
     @@@@@
     @    @
     @@@@@  \n\n""")
    elif character == 'C':
        print("""\
      @@@@@
     @
     @
     @
      @@@@@  \n\n""")
    elif character == 'D':
        print("""\
     @@@@@
     @    @
     @    @
     @    @
     @@@@@   \n\n""")
    elif character == 'E':
        print("""\
     @@@@@@
     @
     @@@@@
     @
     @@@@@@  \n\n""")
    elif character == 'F':
        print("""\
     @@@@@@
     @
     @@@@@
     @
     @       \n\n""")
    elif character == 'G':
        print("""\
      @@@@@
     @
     @ @@@@
     @    @
      @@@@@  \n\n""")
    elif character == 'H':
        print("""\
     @    @
     @    @
     @@@@@@
     @    @
     @    @  \n\n""")
    elif character == 'I':
        print("""\
     @@@@@@
       @@
       @@
       @@
     @@@@@@  \n\n""")
    elif character == 'J':
        print("""\
     @@@@@@
         @@
         @@
     @   @@
      @@@@   \n\n""")
    elif character == 'K':
        print("""\
     @    @
     @   @
     @@@
     @   @
     @    @  \n\n""")
    elif character == 'L':
        print("""\
     @
     @
     @
     @
     @@@@@@  \n\n""")
    elif character == 'M':
        print("""\
     @    @
     @@  @@
     @ @@ @
     @    @
     @    @  \n\n""")
    elif character == 'N':
        print("""\
     @    @
     @@   @
     @ @  @
     @  @ @
     @   @@  \n\n""")
    elif character == 'O':
        print("""\
      @@@@
     @    @
     @    @
     @    @
      @@@@  \n\n""")
    elif character == 'P':
        print("""\
     @@@@@
     @    @
     @@@@@
     @
     @       \n\n""")
    elif character == 'Q':
        print("""\
      @@@@
     @    @
     @    @
     @  @ @
      @@@@@  \n\n""")
    elif character == 'R':
        print("""\
     @@@@@
     @    @
     @ @@
     @   @
     @    @  \n\n""")
    elif character == 'S':
        print("""\
      @@@@@
     @
      @@@@
          @
     @@@@@  \n\n""")
    elif character == 'T':
        print("""\
     @@@@@@
       @@
       @@
       @@
       @@    \n\n""")
    elif character == 'U':
        print("""\
     @    @
     @    @
     @    @
     @    @
      @@@@  \n\n""")
    elif character == 'V':
        print("""\
     @    @
     @    @
     @    @
      @  @
       @@    \n\n""")
    elif character == 'W':
        print("""\
     @    @
     @    @
     @ @@ @
     @@  @@
     @    @  \n\n""")
    elif character == 'X':
        print("""\
     @    @
      @  @
       @@
      @  @
     @    @  \n\n""")
    elif character == 'Y':
        print("""\
     @    @
      @  @
       @@
       @@
       @@    \n\n""")
    elif character == 'Z':
        print("""\
     @@@@@@
        @
       @
      @
     @@@@@@  \n\n""")
    else:
        print("""\n\n\n""")
### Handle and find namespace(s) and functions
class Value:
    class Json:
        def splitValues(namespaces, functions, values):
            namespaces = []
            functions = []
            for x in range(len(values)):
                values_split = ""
                values_split = values[x]
                values_split = values_split.split(":")
                namespaces.append(values_split[0])
                functions.append(values_split[1])
            return namespaces, functions
        def getValues(path):
            file = ""
            values = []
            with open(path, errors='ignore') as fj:
                while True:
                    line = ("{}".format(fj.readline().strip()))
                    if not line:
                        break
                    file += line
            file = file.replace('"', "").replace('[', "").replace(']', "").replace('{', "").replace('}', "").replace('values:', "")
            values = file.split(',')
            return values
if Tick.exist == True:
    Tick.namespaces, Tick.functions = Value.Json.splitValues(Tick.namespaces, Tick.functions, Value.Json.getValues(Tick.path))
if Load.exist == True:
    Load.namespaces, Load.functions = Value.Json.splitValues(Load.namespaces, Load.functions, Value.Json.getValues(Load.path))
### Handle Output file
def output(string):
    with open("One Command Output.txt", "a+", errors='ignore') as fp:
        fp.writelines(string)
with open("One Command Output.txt", "w", errors='ignore') as fk:
        fk.writelines("")
def outputStructure(file, is_load):
    if is_load == False:
        file = Structure.Save.get() + file
        return(file)
    else:
        file = "INIT:" + Structure.Save.get() + file
        return(file)
def linebreak(value=1):
    linebreak_string = ""
    while value > 1:
        value = value - 1
        linebreak_string = "\n" + linebreak_string
    return(linebreak_string)
# Console
print("\n\n")
print("Initial Paths:\n")
if Load.exist == True:
    print(Load.path, ":", "namespaces used:", Load.namespaces, "with the refrenced functions being:", Load.functions)
if Tick.exist == True:
    print(Tick.path, ":", "namespaces used:", Tick.namespaces, "with the refrenced functions being:", Tick.functions)
print("\n\n")
print("   Current Function:                                    Nested Function:")

class Console:
    #dynamic lenght adjustment
    length = 50
    def getLength(string):
        if len(string) > Console.length:
            Console.length = len(string)
        for x in range(Console.length - len(string)):
            string = string + " "
        string = string + "  ->  "
        return(string)
    #standard output style "current path" to "next path"
    def output(current_path, namespace="none", function="none"):
        if namespace == "none":
            if function == "none":
                console_output = " - " + current_path.replace("\\functions\\"," : ").replace(".mcfunction","").replace("data\\","")
                return(console_output)
        else:
            console_output1 = " - " + current_path.replace("\\functions\\"," : ").replace(".mcfunction","").replace("data\\","")
            console_output2 = namespace + " : " + function.strip()
            console_output3 = Console.getLength(console_output1) + console_output2
            return(console_output3)
### Follow structure
class Structure:
    class Last:
        namespace = ""
        function = ""
        path = ""
        def save(namespace, function):
            Structure.Last.namespace = namespace
            Structure.Last.function = function
    class Save:
        not_found = []
        not_found_count = 0
        recursive_used = 0
        schedule_used = 0
        recursive_schedule_used = 0
        nested_used = 0
        path = ""
        paths = []
        def get():
            return("".join(Structure.Save.paths))
        def add(string):
            Structure.Save.paths.append(string)
        def remove(amount=1):
            while amount > 0:
                amount -= 1
                del Structure.Save.paths[-1]

    def isNotRecursive(namespace, function, path):
        path = path.replace("data\\","").replace("\\functions\\",":").replace(".mcfunction","")
        path = path.split(":")
        if path[0] == Structure.Last.namespace:
            if path[1] == Structure.Last.function:
                return_bool = False
            else:
                return_bool = True
        else:
            return_bool = True
        Structure.Last.namespace = namespace
        Structure.Last.function = function
        return(return_bool)
    def pathExist(path):
        exist = os.path.exists(path)
        if exist == False:
            Structure.Save.not_found.append(path)
        return(exist)
    def createPath(namespace, function):
        path_string = "data/" + namespace + "/functions/" + function + ".mcfunction"
        return(path_string.replace("/", "\\"))
    def createPaths(namespaces, functions):
        paths = []
        for x in range(len(namespaces)):
            paths.append(Structure.createPath(namespaces[x], functions[x]))
        return paths
    file_count = 0
    def countFiles():
        Structure.file_count += 1
    def countLines(path):
        with open(path, errors='ignore') as fl:
            return sum(1 for line in fl)
    def generate(paths, is_load):
        for x in range(len(paths)):
            command = ""
            with open(paths[x], errors='ignore') as fs:
                Structure.countFiles()
                num_lines = Structure.countLines(paths[x])
                count = 0
                schedule_used = 0
                while True:
                    count += 1
                    file = ""
                    next_functions = []
                    line = fs.readline()
                    file += line
                    # Check if line is valid:
                    if line != "\n":
                        if "#" not in file:
                            if "/function " not in file:
                                if "schedule " not in file:
                                    # If it calls a function the line continues in different path
                                    if "function " in file:
                                        function = file.find("function ")
                                        Structure.Save.add(file[0:function:])
                                        function += 9
                                        function = file[function::]
                                        function = function.replace("/", "\\")
                                        function = function.split(":")
                                        #generating path based on namespace, function
                                        path = Structure.createPath(function[0], function[1].strip())
                                        #Append path so it can be read by Structure.generate(list) <-requires list (bad design or something)
                                        next_functions.append(path)
                                        #check if its calling a function outside of the datapack
                                        path_exists = Structure.pathExist(path)
                                        #Console "from current path to nested path"
                                        print(Console.output(paths[x], function[0], function[1].strip()))
                                        #Stop if recursive function
                                        Structure.Last.save(function[0], function[1].strip())
                                        if Structure.createPath(Structure.Last.namespace, Structure.Last.function) == paths[x]:
                                            is_not_recursive = False
                                        else:
                                            is_not_recursive = True
                                        #Follows the structure
                                        if path_exists == True:
                                            if is_not_recursive == True:
                                                Structure.generate(next_functions, False)
                                                Structure.Save.nested_used += 1
                                # Output commands, including errors and Load/Tick differentiation
                                            else:
                                                print(" X  ^running recursive functions is not supported")
                                                Structure.Save.recursive_used += 1
                                                output(outputStructure(file, is_load))
                                        else:
                                            print(Console.getLength(" X  ").replace("->", "  ") + " ^function file not found")
                                            Structure.Save.not_found_count += 1
                                            output(outputStructure(file, is_load))
                                    # Else, it finishes and outputs the line
                                    else:
                                        output(outputStructure(file, is_load))
                                #schedule needs an own implementation
                                else:
                                    #This is used to get schedule commands used per file. Its printed later on
                                    schedule_used += 1
                                    #Structure.Save._used values are used to get amount of "errors"
                                    Structure.Save.schedule_used += 1
                                    ####################################################Treat schedule same as ticking function
                                    function = file.find("function ")
                                    function += 9
                                    function = file[function::]
                                    function = function.replace("/", "\\")
                                    function = function.split(":")
                                    remove_time = function[1]
                                    remove_time = remove_time.split(" ")
                                    function[1] = remove_time[0]
                                    #generating path based on namespace, function
                                    path = Structure.createPath(function[0], function[1].strip())
                                    #Append path so it can be read by Structure.generate(list) <-requires list (bad design or something)
                                    next_functions.append(path)
                                    #check if its calling a function not in the datapack
                                    path_exists = Structure.pathExist(path)
                                    #Console "from current path to nested path"
                                    print(Console.output(paths[x], function[0], function[1].strip()))
                                    print(" X  ^schedule command is not supported, will be treated as ticking function")
                                    #Stop if recursive function
                                    Structure.Last.save(function[0], function[1].strip())
                                    if Structure.createPath(Structure.Last.namespace, Structure.Last.function) == paths[x]:
                                        is_not_recursive = False
                                    else:
                                        is_not_recursive = True
                                    #Follows the structure
                                    if path_exists == True:
                                        if is_not_recursive == True:
                                            Structure.generate(next_functions, False)
                                            Structure.Save.nested_used += 1
                                    # Output commands, including errors and Load/Tick differentiation
                                        else:
                                            Structure.Save.recursive_schedule_used += 1
                                    else:
                                        print(Console.getLength(" X  ").replace("->", "  ") + " ^function file not found")
                                        Structure.Save.not_found_count += 1
                                        output(outputStructure(file, is_load))
                                    ####################################################
                                    #output
                                    if "schedule " not in file:
                                        output(outputStructure(file, is_load))
                                            # Seperate output file (or append it to the same output but at the end) per schedule command with one command appended which will be an impulse command block activateing every defined ticks/seconds/minecraft-days (if implemented, break here)
                                            #reimplementing schedule will require many stuff:
                                            # scoreboard objective with namespace, maybe "mt.namespace"
                                            # scoreboard players with name equal to function
                                            # different outputs for each schedule
                                            # if player matches 1 run countdown
                                            # countdown = ticks
                                            # replace schedule command with set player 1
                            else:
                                output(outputStructure(file, is_load))
                        if num_lines == count:
                            if len(Structure.Save.paths) > 0:
                                Structure.Save.remove()
                            break
                    else:
                        output("\n")
                #end is here
            output(linebreak(6))
if Load.exist == True:
    Load.function_paths = Structure.createPaths(Load.namespaces, Load.functions)
    for x in range(len(Load.function_paths)):
        print("\nCalling... ", Console.output(Load.function_paths[x]).replace(" - ", ""))
        initial_path = []
        initial_path.append(Load.function_paths[x])
        Structure.generate(initial_path, True)
if Tick.exist == True:
    Tick.function_paths = Structure.createPaths(Tick.namespaces, Tick.functions)
    for x in range(len(Tick.function_paths)):
        print("\nCalling... ", Console.output(Tick.function_paths[x]).replace(" - ", ""))
        initial_path = []
        initial_path.append(Tick.function_paths[x])
        Structure.generate(initial_path, False)
print("\n")
errors = Structure.Save.schedule_used + Structure.Save.not_found_count + Structure.Save.recursive_used
finish_string1 = ""
finish_string2 = ""
finish_string3 = ""
finish_string4 = ""
for x in range(len(str(errors))):
    finish_string4 = finish_string4 + " "
finish_string1 = str(Structure.file_count) + " times read          " + str(Structure.Save.nested_used) + " nested functions"
finish_string1 = Console.getLength(finish_string1) + str(errors) + " Errors: " + str(Structure.Save.schedule_used) + " schedule " + str(Structure.Save.recursive_schedule_used) + " of which are are also recursive"
finish_string2 = Console.getLength(finish_string2).replace("->", "  ") + "         " + finish_string4 + str(Structure.Save.recursive_used) + " recursive"
finish_string3 = Console.getLength(finish_string3).replace("->", "  ") + "         " + finish_string4 + str(Structure.Save.not_found_count) + " not found"
print(finish_string1 + "\n" + finish_string2 + "\n" + finish_string3)
if Structure.Save.recursive_used == 0:
    if Structure.Save.schedule_used == 0:
        print("\n\n\nSuccessful! \nNow generate One Command with any command combiner like this one from MrGarreto: https://mrgarretto.com/cmdcombiner \nby copy-pasting the \"One Command Output.txt\" file, which is inside the", Directory.get, "folder, into the command combiner.")
    else:
        print("\n\n\nPretty successful! \nSchedule commands have been converted into ticking commands. \nGenerate One Command with any command combiner like this one from MrGarreto: https://mrgarretto.com/cmdcombiner \nby copy-pasting the \"One Command Output.txt\" file, which is inside the", Directory.get, "folder, into the command combiner.")
elif not Structure.Save.schedule_used == 0:
    print("\n\n\nVery unsuccessful. \nRecursive functions are not supported, the results may be quite divergent. Schedule commands have been converted into ticking commands. \nGenerate One Command with any command combiner like this one from MrGarreto: https://mrgarretto.com/cmdcombiner \nby copy-pasting the \"One Command Output.txt\" file, which is inside the", Directory.get, "folder, into the command combiner.")
else:
    print("\n\n\nPartly unsuccessful. \nRecursive functions are not supported, the results may be quite divergent. \nGenerate One Command with any command combiner like this one from MrGarreto: https://mrgarretto.com/cmdcombiner \nby copy-pasting the \"One Command Output.txt\" file, which is inside the", Directory.get, "folder, into the command combiner.")
if not Structure.Save.not_found_count == 0:
    print("\nSome refrenced functions haven't been found:", Structure.Save.not_found)
input('\n\nPress <ENTER> to exit')
