import Tkinter as tk
import ImageTk

def show_image():
    x = canvas.create_image(500,300, image=tk_img)
    while True:
        
        canvas.itemconfigure(x, state=tk.NORMAL)
        button.configure(text = 'Hide')
        yield
              
        canvas.itemconfigure(x, state=tk.HIDDEN)
        button.configure(text = 'Show')        
        yield

root = tk.Tk()
canvas = tk.Canvas(root, width=1000, height=600)
canvas.grid(row=0, column=0)
tk_img = ImageTk.PhotoImage(file='/home/sw15/Documents/project/R/2002Rplot.jpeg')

button = tk.Button(
    root, text="Show", command=show_image().next, anchor='w',
    width=10, activebackground="#33B5E5")
button.grid(row=1, column=0)
root.mainloop()
