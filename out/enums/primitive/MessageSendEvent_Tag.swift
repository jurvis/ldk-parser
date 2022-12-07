
			#if SWIFT_PACKAGE
			import LDKHeaders
			#endif

			public typealias MessageSendEvent_Tag = Bindings.MessageSendEvent_Tag

			extension Bindings {

				/// An event generated by ChannelManager which indicates a message should be sent to a peer (or
				/// broadcast to most peers).
				/// These events are handled by PeerManager::process_events if you are using a PeerManager.
				public enum MessageSendEvent_Tag {

					
					/// Used to indicate that we've accepted a channel open and should send the accept_channel
					/// message provided to the given peer.
					case LDKMessageSendEvent_SendAcceptChannel
			
					/// Used to indicate that we've initiated a channel open and should send the open_channel
					/// message provided to the given peer.
					case LDKMessageSendEvent_SendOpenChannel
			
					/// Used to indicate that a funding_created message should be sent to the peer with the given node_id.
					case LDKMessageSendEvent_SendFundingCreated
			
					/// Used to indicate that a funding_signed message should be sent to the peer with the given node_id.
					case LDKMessageSendEvent_SendFundingSigned
			
					/// Used to indicate that a channel_ready message should be sent to the peer with the given node_id.
					case LDKMessageSendEvent_SendChannelReady
			
					/// Used to indicate that an announcement_signatures message should be sent to the peer with the given node_id.
					case LDKMessageSendEvent_SendAnnouncementSignatures
			
					/// Used to indicate that a series of HTLC update messages, as well as a commitment_signed
					/// message should be sent to the peer with the given node_id.
					case LDKMessageSendEvent_UpdateHTLCs
			
					/// Used to indicate that a revoke_and_ack message should be sent to the peer with the given node_id.
					case LDKMessageSendEvent_SendRevokeAndACK
			
					/// Used to indicate that a closing_signed message should be sent to the peer with the given node_id.
					case LDKMessageSendEvent_SendClosingSigned
			
					/// Used to indicate that a shutdown message should be sent to the peer with the given node_id.
					case LDKMessageSendEvent_SendShutdown
			
					/// Used to indicate that a channel_reestablish message should be sent to the peer with the given node_id.
					case LDKMessageSendEvent_SendChannelReestablish
			
					/// Used to send a channel_announcement and channel_update to a specific peer, likely on
					/// initial connection to ensure our peers know about our channels.
					case LDKMessageSendEvent_SendChannelAnnouncement
			
					/// Used to indicate that a channel_announcement and channel_update should be broadcast to all
					/// peers (except the peer with node_id either msg.contents.node_id_1 or msg.contents.node_id_2).
					/// 
					/// Note that after doing so, you very likely (unless you did so very recently) want to
					/// broadcast a node_announcement (e.g. via [`PeerManager::broadcast_node_announcement`]). This
					/// ensures that any nodes which see our channel_announcement also have a relevant
					/// node_announcement, including relevant feature flags which may be important for routing
					/// through or to us.
					/// 
					/// [`PeerManager::broadcast_node_announcement`]: crate::ln::peer_handler::PeerManager::broadcast_node_announcement
					case LDKMessageSendEvent_BroadcastChannelAnnouncement
			
					/// Used to indicate that a channel_update should be broadcast to all peers.
					case LDKMessageSendEvent_BroadcastChannelUpdate
			
					/// Used to indicate that a channel_update should be sent to a single peer.
					/// In contrast to [`Self::BroadcastChannelUpdate`], this is used when the channel is a
					/// private channel and we shouldn't be informing all of our peers of channel parameters.
					case LDKMessageSendEvent_SendChannelUpdate
			
					/// Broadcast an error downstream to be handled
					case LDKMessageSendEvent_HandleError
			
					/// Query a peer for channels with funding transaction UTXOs in a block range.
					case LDKMessageSendEvent_SendChannelRangeQuery
			
					/// Request routing gossip messages from a peer for a list of channels identified by
					/// their short_channel_ids.
					case LDKMessageSendEvent_SendShortIdsQuery
			
					/// Sends a reply to a channel range query. This may be one of several SendReplyChannelRange events
					/// emitted during processing of the query.
					case LDKMessageSendEvent_SendReplyChannelRange
			
					/// Sends a timestamp filter for inbound gossip. This should be sent on each new connection to
					/// enable receiving gossip messages from the peer.
					case LDKMessageSendEvent_SendGossipTimestampFilter
			

					internal init (value: LDKMessageSendEvent_Tag) {

						// TODO: remove this initial assumption somehow
						self = .LDKMessageSendEvent_SendGossipTimestampFilter

						
						if value == LDKMessageSendEvent_SendAcceptChannel {
							self = .LDKMessageSendEvent_SendAcceptChannel
						}
			
						if value == LDKMessageSendEvent_SendOpenChannel {
							self = .LDKMessageSendEvent_SendOpenChannel
						}
			
						if value == LDKMessageSendEvent_SendFundingCreated {
							self = .LDKMessageSendEvent_SendFundingCreated
						}
			
						if value == LDKMessageSendEvent_SendFundingSigned {
							self = .LDKMessageSendEvent_SendFundingSigned
						}
			
						if value == LDKMessageSendEvent_SendChannelReady {
							self = .LDKMessageSendEvent_SendChannelReady
						}
			
						if value == LDKMessageSendEvent_SendAnnouncementSignatures {
							self = .LDKMessageSendEvent_SendAnnouncementSignatures
						}
			
						if value == LDKMessageSendEvent_UpdateHTLCs {
							self = .LDKMessageSendEvent_UpdateHTLCs
						}
			
						if value == LDKMessageSendEvent_SendRevokeAndACK {
							self = .LDKMessageSendEvent_SendRevokeAndACK
						}
			
						if value == LDKMessageSendEvent_SendClosingSigned {
							self = .LDKMessageSendEvent_SendClosingSigned
						}
			
						if value == LDKMessageSendEvent_SendShutdown {
							self = .LDKMessageSendEvent_SendShutdown
						}
			
						if value == LDKMessageSendEvent_SendChannelReestablish {
							self = .LDKMessageSendEvent_SendChannelReestablish
						}
			
						if value == LDKMessageSendEvent_SendChannelAnnouncement {
							self = .LDKMessageSendEvent_SendChannelAnnouncement
						}
			
						if value == LDKMessageSendEvent_BroadcastChannelAnnouncement {
							self = .LDKMessageSendEvent_BroadcastChannelAnnouncement
						}
			
						if value == LDKMessageSendEvent_BroadcastChannelUpdate {
							self = .LDKMessageSendEvent_BroadcastChannelUpdate
						}
			
						if value == LDKMessageSendEvent_SendChannelUpdate {
							self = .LDKMessageSendEvent_SendChannelUpdate
						}
			
						if value == LDKMessageSendEvent_HandleError {
							self = .LDKMessageSendEvent_HandleError
						}
			
						if value == LDKMessageSendEvent_SendChannelRangeQuery {
							self = .LDKMessageSendEvent_SendChannelRangeQuery
						}
			
						if value == LDKMessageSendEvent_SendShortIdsQuery {
							self = .LDKMessageSendEvent_SendShortIdsQuery
						}
			
						if value == LDKMessageSendEvent_SendReplyChannelRange {
							self = .LDKMessageSendEvent_SendReplyChannelRange
						}
			
						if value == LDKMessageSendEvent_SendGossipTimestampFilter {
							self = .LDKMessageSendEvent_SendGossipTimestampFilter
						}
			
					}

					internal func getCValue() -> LDKMessageSendEvent_Tag {
						switch self {
							
							case .LDKMessageSendEvent_SendAcceptChannel:
								return LDKMessageSendEvent_SendAcceptChannel
			
							case .LDKMessageSendEvent_SendOpenChannel:
								return LDKMessageSendEvent_SendOpenChannel
			
							case .LDKMessageSendEvent_SendFundingCreated:
								return LDKMessageSendEvent_SendFundingCreated
			
							case .LDKMessageSendEvent_SendFundingSigned:
								return LDKMessageSendEvent_SendFundingSigned
			
							case .LDKMessageSendEvent_SendChannelReady:
								return LDKMessageSendEvent_SendChannelReady
			
							case .LDKMessageSendEvent_SendAnnouncementSignatures:
								return LDKMessageSendEvent_SendAnnouncementSignatures
			
							case .LDKMessageSendEvent_UpdateHTLCs:
								return LDKMessageSendEvent_UpdateHTLCs
			
							case .LDKMessageSendEvent_SendRevokeAndACK:
								return LDKMessageSendEvent_SendRevokeAndACK
			
							case .LDKMessageSendEvent_SendClosingSigned:
								return LDKMessageSendEvent_SendClosingSigned
			
							case .LDKMessageSendEvent_SendShutdown:
								return LDKMessageSendEvent_SendShutdown
			
							case .LDKMessageSendEvent_SendChannelReestablish:
								return LDKMessageSendEvent_SendChannelReestablish
			
							case .LDKMessageSendEvent_SendChannelAnnouncement:
								return LDKMessageSendEvent_SendChannelAnnouncement
			
							case .LDKMessageSendEvent_BroadcastChannelAnnouncement:
								return LDKMessageSendEvent_BroadcastChannelAnnouncement
			
							case .LDKMessageSendEvent_BroadcastChannelUpdate:
								return LDKMessageSendEvent_BroadcastChannelUpdate
			
							case .LDKMessageSendEvent_SendChannelUpdate:
								return LDKMessageSendEvent_SendChannelUpdate
			
							case .LDKMessageSendEvent_HandleError:
								return LDKMessageSendEvent_HandleError
			
							case .LDKMessageSendEvent_SendChannelRangeQuery:
								return LDKMessageSendEvent_SendChannelRangeQuery
			
							case .LDKMessageSendEvent_SendShortIdsQuery:
								return LDKMessageSendEvent_SendShortIdsQuery
			
							case .LDKMessageSendEvent_SendReplyChannelRange:
								return LDKMessageSendEvent_SendReplyChannelRange
			
							case .LDKMessageSendEvent_SendGossipTimestampFilter:
								return LDKMessageSendEvent_SendGossipTimestampFilter
			
						}
					}

				}

			}
		