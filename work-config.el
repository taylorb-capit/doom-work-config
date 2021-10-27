(after! org (setq
             org-directory "~/Dropbox/Org"
  org-tag-alist '(("PROJECT" . ?p) ("QUESTION" . ?q) ("brewapp" . ?b)
                  ("webservice" . ?w) ("android" . ?a) ("kneedeep" . ?k))))

(setq +org-base-path "~/Dropbox/Org/")
(setq +org-gtd-path +org-base-path)
(setq +daypage-path (concat +org-base-path "log/"))
(setq +org-wiki-path (concat +org-base-path "notes/"))
(setq +org-wiki-index (concat +org-wiki-path "index.org"))
(setq +org-todo-file (concat +org-gtd-path "todo.org"))
(setq +org-inbox-file (concat +org-gtd-path "inbox.org"))
(setq +org-incubator-file (concat +org-gtd-path "incubator.org"))
(setq +org-quotes-file (concat +org-wiki-path "personal/quotes.org"))

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
