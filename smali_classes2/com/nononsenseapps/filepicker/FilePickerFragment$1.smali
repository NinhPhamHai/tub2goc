.class Lcom/nononsenseapps/filepicker/FilePickerFragment$1;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "FilePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nononsenseapps/filepicker/FilePickerFragment;->getLoader()Landroidx/loader/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/AsyncTaskLoader<",
        "Landroidx/recyclerview/widget/SortedList<",
        "Ljava/io/File;",
        ">;>;"
    }
.end annotation


# instance fields
.field fileObserver:Landroid/os/FileObserver;

.field final synthetic this$0:Lcom/nononsenseapps/filepicker/FilePickerFragment;


# direct methods
.method constructor <init>(Lcom/nononsenseapps/filepicker/FilePickerFragment;Landroid/content/Context;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->this$0:Lcom/nononsenseapps/filepicker/FilePickerFragment;

    invoke-direct {p0, p2}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public loadInBackground()Landroidx/recyclerview/widget/SortedList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/SortedList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->this$0:Lcom/nononsenseapps/filepicker/FilePickerFragment;

    iget-object v0, v0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentPath:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 220
    :cond_0
    array-length v2, v0

    .line 222
    :goto_0
    new-instance v3, Landroidx/recyclerview/widget/SortedList;

    const-class v4, Ljava/io/File;

    new-instance v5, Lcom/nononsenseapps/filepicker/FilePickerFragment$1$1;

    iget-object v6, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->this$0:Lcom/nononsenseapps/filepicker/FilePickerFragment;

    invoke-virtual {v6}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->getDummyAdapter()Lcom/nononsenseapps/filepicker/FileItemAdapter;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/nononsenseapps/filepicker/FilePickerFragment$1$1;-><init>(Lcom/nononsenseapps/filepicker/FilePickerFragment$1;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {v3, v4, v5, v2}, Landroidx/recyclerview/widget/SortedList;-><init>(Ljava/lang/Class;Landroidx/recyclerview/widget/SortedList$Callback;I)V

    .line 240
    invoke-virtual {v3}, Landroidx/recyclerview/widget/SortedList;->beginBatchedUpdates()V

    if-eqz v0, :cond_2

    .line 242
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 243
    iget-object v5, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->this$0:Lcom/nononsenseapps/filepicker/FilePickerFragment;

    invoke-virtual {v5, v4}, Lcom/nononsenseapps/filepicker/FilePickerFragment;->isItemVisible(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 244
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/SortedList;->add(Ljava/lang/Object;)I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 248
    :cond_2
    invoke-virtual {v3}, Landroidx/recyclerview/widget/SortedList;->endBatchedUpdates()V

    return-object v3
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 213
    invoke-virtual {p0}, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->loadInBackground()Landroidx/recyclerview/widget/SortedList;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 1

    .line 288
    invoke-super {p0}, Landroidx/loader/content/Loader;->onReset()V

    .line 291
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->fileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v0, 0x0

    .line 293
    iput-object v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->fileObserver:Landroid/os/FileObserver;

    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 3

    .line 258
    invoke-super {p0}, Landroidx/loader/content/Loader;->onStartLoading()V

    .line 261
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->this$0:Lcom/nononsenseapps/filepicker/FilePickerFragment;

    iget-object v0, v0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentPath:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->this$0:Lcom/nononsenseapps/filepicker/FilePickerFragment;

    invoke-virtual {v0}, Lcom/nononsenseapps/filepicker/FilePickerFragment;->getRoot()Ljava/io/File;

    move-result-object v1

    iput-object v1, v0, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentPath:Ljava/lang/Object;

    .line 266
    :cond_1
    new-instance v0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1$2;

    iget-object v1, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->this$0:Lcom/nononsenseapps/filepicker/FilePickerFragment;

    iget-object v1, v1, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->mCurrentPath:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3c0

    invoke-direct {v0, p0, v1, v2}, Lcom/nononsenseapps/filepicker/FilePickerFragment$1$2;-><init>(Lcom/nononsenseapps/filepicker/FilePickerFragment$1;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->fileObserver:Landroid/os/FileObserver;

    .line 278
    iget-object v0, p0, Lcom/nononsenseapps/filepicker/FilePickerFragment$1;->fileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 280
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->forceLoad()V

    return-void
.end method
