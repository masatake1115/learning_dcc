from pymxs import runtime as rt
import qtmax
from PySide6 import QtWidgets



if __name__=="__main__":

	parent = QtWidgets.QWidget.find(rt.windows.getMAXHWND())#qtmax.GetQMaxMainWindow()

	win = QtWidgets.QFrame( parent )
	#win.setParent(parent, QtCore.Qt.Window)
	win.resize(600, 600)

	layout = QtWidgets.QVBoxLayout(win)
	layout.addWidget(QtWidgets.QLabel("Hello 3dsMax!"))
	print( parent )

	win.show()