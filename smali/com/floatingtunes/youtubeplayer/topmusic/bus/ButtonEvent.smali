.class public Lcom/floatingtunes/youtubeplayer/topmusic/bus/ButtonEvent;
.super Ljava/lang/Object;
.source "ButtonEvent.java"


# instance fields
.field private event:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/ButtonEvent;->event:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/bus/ButtonEvent;->event:Ljava/lang/String;

    return-object v0
.end method
