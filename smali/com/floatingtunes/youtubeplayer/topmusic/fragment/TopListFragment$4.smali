.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$4;
.super Ljava/lang/Object;
.source "TopListFragment.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->loadDataFromServer()V
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
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;)V"
        }
    .end annotation

    .line 426
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 428
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/QuerySnapshot;

    .line 429
    invoke-virtual {p1}, Lcom/google/firebase/firestore/QuerySnapshot;->getDocuments()Ljava/util/List;

    move-result-object p1

    .line 431
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 432
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YConfig;->NO_MORE_PAGE:Ljava/lang/String;

    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mCurrentPageToken:Ljava/lang/String;

    goto :goto_0

    .line 437
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->access$400(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 438
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YConfig;->NO_MORE_PAGE:Ljava/lang/String;

    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mCurrentPageToken:Ljava/lang/String;

    .line 443
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->access$400(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 444
    :cond_2
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YConfig;->NO_MORE_PAGE:Ljava/lang/String;

    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mCurrentPageToken:Ljava/lang/String;

    .line 448
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/DocumentSnapshot;

    .line 450
    const-class v2, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->toObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    .line 451
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-static {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 455
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 457
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    .line 459
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mFirebaseFirestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v2, "music_db_201905"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v1

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    .line 460
    invoke-static {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->access$600(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v1

    const-string v2, "playlist_list"

    .line 461
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/DocumentReference;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v1

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    .line 462
    invoke-static {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->access$500(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v1

    const-string v2, "video_list"

    .line 463
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/DocumentReference;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v1

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    .line 464
    invoke-static {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->access$400(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/firestore/Query;->limit(J)Lcom/google/firebase/firestore/Query;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/Query$Direction;->DESCENDING:Lcom/google/firebase/firestore/Query$Direction;

    const-string v3, "date"

    .line 465
    invoke-virtual {v1, v3, v2}, Lcom/google/firebase/firestore/Query;->orderBy(Ljava/lang/String;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;

    move-result-object v1

    .line 466
    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/Query;->startAfter(Lcom/google/firebase/firestore/DocumentSnapshot;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    iput-object p1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->nextGroup:Lcom/google/firebase/firestore/Query;

    .line 471
    :cond_5
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 473
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_6

    const/16 v0, 0x8

    .line 474
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 477
    :cond_6
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->access$302(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;Z)Z

    .line 479
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->access$700(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)V

    :cond_7
    return-void
.end method
