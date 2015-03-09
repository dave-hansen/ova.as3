/*    
 *    Copyright (c) 2010 LongTail AdSolutions, Inc
 *
 *    This file is part of the Open Video Ads VAST framework.
 *
 *    The VAST framework is free software: you can redistribute it 
 *    and/or modify it under the terms of the GNU General Public License 
 *    as published by the Free Software Foundation, either version 3 of 
 *    the License, or (at your option) any later version.
 *
 *    The VAST framework is distributed in the hope that it will be 
 *    useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *    GNU General Public License for more details.
 *
 *    You should have received a copy of the GNU General Public License
 *    along with the framework.  If not, see <http://www.gnu.org/licenses/>.
 */
package org.openvideoads.vast.analytics {
	import org.openvideoads.base.Debuggable;
	import org.openvideoads.vast.VASTController;
	import org.openvideoads.vast.config.groupings.analytics.AnalyticsConfigGroup;
	import org.openvideoads.vast.schedule.ads.AdSlot;
	import org.openvideoads.vast.server.request.AdServerRequest;
	
	public class AnalyticsProcessor extends Debuggable implements AnalyticsInterface {

		protected var _vastController:VASTController = null;

		public static const IMPRESSIONS:String = "impressions";
		public static const AD_CALLS:String = "adCalls";
		public static const TEMPLATE:String = "template";
		public static const AD_SLOT:String = "adSlot";
		public static const PROGRESS:String = "progress";
		public static const CLICKS:String = "clicks";
		public static const VPAID:String = "vpaid";
		public static const ALL:String = "all";
		public static const LINEAR:String = "linear";
		public static const NON_LINEAR:String = "nonLinear";
		public static const COMPANION:String = "companion";
		public static const NON_INTERACTIVE:String = "non-interactive";
		public static const LOADED:String = "loaded";
		public static const EMPTY:String = "empty";
		public static const FIRED:String = "fired";
		public static const COMPLETE:String = "complete";
		public static const ERROR:String = "error";
		public static const TIMED_OUT:String = "timeout";
		public static const DEFERRED:String = "deferred";
		public static const FAILED_OVER:String = "failover";
		public static const START:String = "start";
		public static const STOP:String = "stop";
		public static const FIRST_QUARTILE:String = "firstQuartile";
		public static const MIDPOINT:String = "midpoint";
		public static const THIRD_QUARTILE:String = "thirdQuartile";
		public static const PAUSE:String = "pause";
		public static const RESUME:String = "resume";
		public static const FULLSCREEN:String = "fullscreen";
		public static const MUTE:String = "mute";
		public static const UNMUTE:String = "unmute";
		public static const EXPAND:String = "expand";
		public static const COLLAPSE:String = "collapse";
		public static const USER_ACCEPT_INVITATION:String = "userAcceptInvitation";
		public static const CLOSE:String = "close";
		public static const STARTED:String = "started";
		public static const STOPPED:String = "stopped";
		public static const LINEAR_CHANGE:String = "linearChange";
		public static const EXPANDED_CHANGE:String = "expandedChange";
		public static const REMAINING_TIME_CHANGE:String = "remainingTimeChange";
		public static const VOLUME_CHANGE:String = "volumeChange";
		public static const PAUSED:String = "paused";
		public static const PLAYING:String = "playing";
		public static const VIDEO_START:String = "videoStart";
		public static const VIDEO_FIRST_QUARTILE:String = "videoFirstQuartile";
		public static const VIDEO_MIDPOINT:String = "videoMidpoint";
		public static const VIDEO_THIRD_QUARTILE:String = "videoThirdQuartile";
		public static const VIDEO_COMPLETE:String = "videoComplete";
		public static const SKIPPED:String = "skipped";
		public static const SKIPPABLE_STATE_CHANGE:String = "skippableStateChange";
		public static const SIZE_CHANGE:String = "sizeChange";
		public static const DURATION_CHANGE:String = "durationChange";
		public static const AD_INTERACTION:String = "adInteraction";

		public static const SCHEDULED:String = "scheduled";
		public static const NOT_SCHEDULED:String = "not-scheduled";
		
		public static const POSITION_PRE_ROLL:String = "pre-roll";
		public static const POSITION_MID_ROLL:String = "mid-roll";
		public static const POSITION_POST_ROLL:String = "post-roll";
				
		public function AnalyticsProcessor(vastController:VASTController, config:AnalyticsConfigGroup=null) {
			_vastController = vastController;
			if(config != null) {
				initialise(config);
			}
		}
		
		public function initialise(config:AnalyticsConfigGroup):void {
		}

		public function fireAdCallTracking(type:String, adRequest:AdServerRequest, wrapped:Boolean=false, additionalParams:*=null):void {
		}
		
        public function fireTemplateLoadTracking(type:String, additionalParams:*=null):void {
        }

        public function fireAdSchedulingTracking(type:String, adSlot:AdSlot, additionalParams:*=null):void {
        }

        public function fireAdSlotTracking(type:String, adSlot:AdSlot, additionalParams:*=null):void {
        }
        
		public function fireImpressionTracking(type:String, adSlot:AdSlot, ad:*, additionalParams:*=null):void {
		}
		
        public function fireAdPlaybackTracking(type:String, adSlot:AdSlot, ad:*, additionalParams:*=null):void {
        }

        public function fireVPAIDPlaybackTracking(type:String, adSlot:AdSlot, ad:*, additionalParams:*=null):void {
        }
        
        public function fireAdClickTracking(type:String, adSlot:AdSlot, ad:*, additionalParams:*=null):void {
        }
    }
}