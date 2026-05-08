import pdb; 
def find_average(numbers):
    total = 0
    pdb.set_trace()
    for i in range(len(numbers)):
        total += i  # ОШИБКА
      
    return total / len(numbers)

nums = [10, 20, 30, 40]
result = find_average(nums)
print("Среднее:", result)