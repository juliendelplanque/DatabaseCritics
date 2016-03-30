Abstract class to choose items from a list.

#leftItems and #rightItems instance variables old the data that should be in left and right lists.
They are used because the object can have its list items change when it has been deleted.
So, when it is opened, its left and right lists elements are initialized with #leftItems and #rightItems elements.