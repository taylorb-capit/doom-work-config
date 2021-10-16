(after! org (setq
  org-tag-alist '(("PROJECT" . ?p) ("QUESTION" . ?q) ("brewapp" . ?b)
                  ("webservice" . ?w) ("android" . ?a) ("kneedeep" . ?k))))

(setq org-agenda-custom-commands
    '(
      ("a" "My agenda"
       ((tags-todo "brewapp"
                   ((org-agenda-overriding-header "BrewApp")
                    (org-agenda-sorting-strategy '(todo-state-up))))
         (tags-todo "webservice"
               ((org-agenda-overriding-header "WebService")(org-agenda-sorting-strategy '(todo-state-up))))
         (tags-todo "android"
               ((org-agenda-overriding-header "Android")(org-agenda-sorting-strategy '(todo-state-up))))
         (tags-todo "kneedeep"
               ((org-agenda-overriding-header "KneeDeep")(org-agenda-sorting-strategy '(todo-state-up))))
         (tags-todo "-{.*}"
               ((org-agenda-overriding-header "Untagged")(org-agenda-sorting-strategy '(todo-state-up))))))
      ("W" todo-tree "WAITING")
      ("n" todo "NOTE")))
