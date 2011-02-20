//AS3///////////////////////////////////////////////////////////////////////////
// 
// Copyright (c) 2011 the original author or authors
//
// Permission is hereby granted to use, modify, and distribute this file
// in accordance with the terms of the license agreement accompanying it.
// 
////////////////////////////////////////////////////////////////////////////////

package com.jeremyruppel.routing.core {
	import org.osflash.signals.ISignal;
//	import flash.events.IEventDispatcher;

	/**
	 * Interface describing the contract for a Router object.
	 * 
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 9.0
	 * 
	 * @author Jeremy Ruppel
	 * @since  08.09.2010
	 */
	public interface IRouter
	{
	
		//--------------------------------------
		//  PUBLIC METHODS
		//--------------------------------------
	
		/**
		 * maps a route to a certain event type
		 * 
		 * @param route String
		 * @param eventType String
		 */
		function mapRoute( route : String, signal : ISignal ) : void;
		
		/**
		 * maps a pattern to a certain event type
		 * 
		 * @param pattern RegExp
		 * @param eventType String
		 */
		function mapPattern( pattern : RegExp, signal : ISignal ) : void;
		
		/**
		 * maps a series of query string values to a certain event type
		 * 
		 * @param hash Object
		 * @param eventType String
		 */
		function mapQuery( hash : Object, signal : ISignal ) : void;
		
		/**
		 * checks to see if a route has been mapped
		 * 
		 * @param route String
		 * @return Boolean whether or not the given route matches any mapped routes
		 */
		function hasRoute( route : String ) : Boolean;
		
		/**
		 * accepts a string route and attempts to dispatch the associated event
		 * 
		 * @param route String
		 */
		function route( route : String ) : void;
		
		//--------------------------------------
		//  GETTER/SETTERS
		//--------------------------------------
		
		/**
		 * the <code>ISignal</code> this router uses to dispatch unrouted signals
		 */
		function get unrouted( ) : ISignal;
		
	}

}