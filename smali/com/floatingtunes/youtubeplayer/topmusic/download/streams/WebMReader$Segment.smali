.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;
.super Ljava/lang/Object;
.source "WebMReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Segment"
.end annotation


# instance fields
.field private currentCluster:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

.field firstClusterInSegment:Z

.field public info:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Info;

.field private final ref:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;

.field tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->ref:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

    const/4 p1, 0x1

    .line 419
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->firstClusterInSegment:Z

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;
    .locals 0

    .line 415
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->ref:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

    return-object p0
.end method

.method static synthetic access$102(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->currentCluster:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

    return-object p1
.end method


# virtual methods
.method public getNextCluster()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Cluster;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->access$200(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 432
    :cond_0
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->firstClusterInSegment:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->access$300(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

    move-result-object v0

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->currentCluster:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

    if-eqz v0, :cond_1

    .line 433
    iput-boolean v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->firstClusterInSegment:Z

    .line 434
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->access$300(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

    move-result-object v1

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->currentCluster:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

    invoke-static {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->access$400(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Cluster;

    move-result-object v0

    return-object v0

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->access$300(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

    move-result-object v3

    iget-object v3, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->currentCluster:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

    invoke-static {v0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->access$500(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)V

    .line 438
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->access$300(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

    move-result-object v3

    iget-object v3, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->ref:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0xf43b675

    aput v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->access$600(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;[I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 443
    :cond_2
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;

    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->access$300(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

    move-result-object v1

    iput-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->currentCluster:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

    .line 445
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->access$300(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

    move-result-object v1

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->currentCluster:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

    invoke-static {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->access$400(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Cluster;

    move-result-object v0

    return-object v0
.end method
