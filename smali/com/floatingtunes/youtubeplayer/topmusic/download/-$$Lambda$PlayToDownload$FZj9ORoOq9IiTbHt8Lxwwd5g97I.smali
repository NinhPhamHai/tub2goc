.class public final synthetic Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$PlayToDownload$FZj9ORoOq9IiTbHt8Lxwwd5g97I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$PlayToDownload$FZj9ORoOq9IiTbHt8Lxwwd5g97I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$PlayToDownload$FZj9ORoOq9IiTbHt8Lxwwd5g97I;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$PlayToDownload$FZj9ORoOq9IiTbHt8Lxwwd5g97I;-><init>()V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$PlayToDownload$FZj9ORoOq9IiTbHt8Lxwwd5g97I;->INSTANCE:Lcom/floatingtunes/youtubeplayer/topmusic/download/-$$Lambda$PlayToDownload$FZj9ORoOq9IiTbHt8Lxwwd5g97I;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/PlayToDownload;->lambda$loadData$1(Ljava/lang/Throwable;)V

    return-void
.end method
