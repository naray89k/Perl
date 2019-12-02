# The continue Block
# In a for statement, the expression following the second semicolon is executed each time the end of the
# loop is reached or whenever a next statement is executed. For example:
    for ($i = 1; $i <= 10; $i++) {
        print ("$i\n");
    }

# In this example, the expression $i++, which adds 1 to $i, is executed after the print function is called.
# Similarly, you can define statements that are to be executed whenever the end of a while loop or an
# until loop is reached. To carry out this task, specify a continue statement after the loop.
    $i = 1;
    while ($i <= 10) {
        print ("$i\n");
    }
    continue {
        $i++;
    }

# A continue statement must be followed by a statement block, which is a collection of zero or more
# statements enclosed in brace characters. This statement block contains the state-ments to be executed at the
# bottom of each loop. In this example, the statement
    $i++;
# is executed after each call to print. This while loop therefore behaves like the for loop you've just
# seen.
# The continue statement is executed even if a pass through the loop is prematurely ended by a next
# statement. It is not executed, however, if the loop is terminated by a last statement.
