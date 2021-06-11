log_file = open("um-server-01.txt")


def melon_order(log_file):
    for line in log_file:
        line = line.rstrip()
        melon_amt = line[16:18]
        melon_amt = int(melon_amt.rstrip())
        if melon_amt > 10:
            print(melon_amt)


melon_order(log_file)