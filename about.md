# Announcement
For months now, I've been trying to picture an efficient, elegant and expandable way of creating, maintaining and updating themes, with only a few actions required by the operator. Turns out, most of my solutions weren't any of that, resulting in a mess of scripts, folders, asset separation and, often, the impossibility to produce a conclusive result.

Our old CSS-based approach was to be moved to a new SCSS-based source code tree. However, it was hard coming to a concluding model, because all the other projects using SCSS as their source tool had only a few themes (max. 6) to maintain, and that only required small adjustments to the code that could be solved with an if () statement (SCSS supports if statements, did you know?)

However, the B00merang Project has more than 30 very different themes that, at the base all branch out from our first themes, but there was no concluent method of sharing that code effectively. The MTAC bash-based approach failed because the model behind it was wrong. Now, we changed how the model works. We will not split different resources and code or merge common code into a big 'tree' file. We shall take an approached based on object-oriented programming: inheritance.

Inheritance allows to have parent classes and child classes, in which the child classes can override methods contained in the parent, but can still keep other methods that are of use inside this one class. 

Applying this approach to our model, this is what we determined:
1 - We will have a parent theme, that will determine all the major classes and nodes available
2 - All other themes will inherit this parent theme's code, unless they have overrides in their source folder
3 - Child themes can also be parents. For example, the XP Olive theme may inherit the button code from the XP Luna theme, as only colors are changed between them
4 - The base theme will be SCSS-based, as will all child overrides. It will allow for a better maintenance of the source code. New compilations of all the themes should be made available each month.
5 - Only GTK-related code will be managed by the TDK. As time goes, we may be able to apply this approach to other DE-based themes (ex. Cinnamon, Gnome, Budgie). In case they make it into the TDK, they will not be a part of the whole structure, but will be run as extensions, allowing for the TDK to run even if these DE themes compilers were to be abandoned (ex. Unity will be deprecated; the unity-builder would be removed and no script re-write would be needed)
6 - The TDK would eventually gain a GUI-based theme editor. NOTE: This is a project that would require lots of time and work. We are not planning on a short or mid-term.

Now that the model is completed, B00merang developers will be planning the development and work should start around mid-December. We will be pushing updates as they become available on this repo.
