.class Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity$4;
.super Ljava/lang/Object;
.source "LoadAllActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/firebase/firestore/QuerySnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;)V"
        }
    .end annotation

    .line 173
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/QuerySnapshot;->getDocuments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 178
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;

    iput-boolean v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->hasResult:Z

    .line 179
    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->getLoadingSate()Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    move-result-object v0

    sget-object v2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;->NO_RESULT:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    if-eq v0, v2, :cond_0

    .line 180
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    invoke-virtual {v0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setLoadingSate(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;)V

    .line 184
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/QuerySnapshot;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/DocumentSnapshot;

    .line 185
    const-class v2, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->toObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;

    .line 187
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;

    invoke-static {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    :cond_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;

    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setDataList(Ljava/util/List;)V

    .line 191
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mLoadingAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 195
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting documents: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LoadAllActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;

    iput-boolean v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->isLoading:Z

    return-void
.end method
