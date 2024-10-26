# Save this as generate_python_plot.py
import matplotlib.pyplot as plt

# Create sample data for plotting
x = [1, 2, 3, 4, 5]
y = [85, 92, 78, 90, 88]

# Plot the data
plt.figure(figsize=(8, 5))
plt.plot(x, y, marker='o', color='b', linestyle='-', linewidth=2, markersize=8)
plt.title("Scores over 5 Entries")
plt.xlabel("Entry ID")
plt.ylabel("Score")
plt.grid(True)

# Save the plot
plt.savefig("python_plot.png")
