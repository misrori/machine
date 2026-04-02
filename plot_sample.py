import matplotlib.pyplot as plt
import numpy as np

# Generate sample data
x = np.linspace(0, 10, 100)
y = np.sin(x)

# Create the plot
plt.plot(x, y)
plt.title('Minta szinuszhullám')
plt.xlabel('x')
plt.ylabel('sin(x)')

# Save the plot to a file
plt.savefig('sample_plot.png')
print("A plot elmentve sample_plot.png néven")