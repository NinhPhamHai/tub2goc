.class Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$1;
.super Ljava/lang/Object;
.source "SpotlightOnViewAllActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->loadData()V
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
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;

.field final synthetic val$database:Lcom/google/firebase/firestore/FirebaseFirestore;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;Lcom/google/firebase/firestore/FirebaseFirestore;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$1;->val$database:Lcom/google/firebase/firestore/FirebaseFirestore;

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

    .line 277
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 280
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/QuerySnapshot;

    .line 281
    invoke-virtual {p1}, Lcom/google/firebase/firestore/QuerySnapshot;->getDocuments()Ljava/util/List;

    move-result-object p1

    .line 284
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;

    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->PAGE_TOKEN_END:Ljava/lang/String;

    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->mCurrentPageToken:Ljava/lang/String;

    .line 290
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->mDiscoverAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$DiscoverAdapter;

    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$DiscoverAdapter;->setAllDataLoad()V

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;

    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->PAGE_TOKEN_END:Ljava/lang/String;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->mCurrentPageToken:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 302
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;)V

    return-void

    .line 307
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/DocumentSnapshot;

    .line 309
    const-class v2, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/DocumentSnapshot;->toObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    .line 310
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;

    invoke-static {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 314
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 316
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    .line 318
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$1;->val$database:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v2, "music_db_201905"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v1

    const-string v2, "mood"

    .line 319
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v1

    const-string v2, "playlist_list"

    .line 320
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/DocumentReference;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v1

    const-wide/16 v2, 0x14

    .line 321
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/firestore/Query;->limit(J)Lcom/google/firebase/firestore/Query;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/Query$Direction;->DESCENDING:Lcom/google/firebase/firestore/Query$Direction;

    const-string v3, "update_date"

    .line 322
    invoke-virtual {v1, v3, v2}, Lcom/google/firebase/firestore/Query;->orderBy(Ljava/lang/String;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;

    move-result-object v1

    .line 323
    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/Query;->startAfter(Lcom/google/firebase/firestore/DocumentSnapshot;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    iput-object p1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->nextGroup:Lcom/google/firebase/firestore/Query;

    .line 327
    :cond_4
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_7

    .line 329
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_5

    const/16 v0, 0x8

    .line 330
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 334
    :cond_5
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->access$202(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;Z)Z

    .line 336
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->access$300(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;)V

    goto :goto_1

    .line 341
    :cond_6
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;)V

    :cond_7
    :goto_1
    return-void
.end method
