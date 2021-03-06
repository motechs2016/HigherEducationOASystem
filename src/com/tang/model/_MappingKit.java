package com.tang.model;

import com.jfinal.plugin.activerecord.ActiveRecordPlugin;

/**
 * Generated by JFinal, do not modify this file.
 * <pre>
 * Example:
 * public void configPlugin(Plugins me) {
 *     ActiveRecordPlugin arp = new ActiveRecordPlugin(...);
 *     _MappingKit.mapping(arp);
 *     me.add(arp);
 * }
 * </pre>
 */
public class _MappingKit {

	public static void mapping(ActiveRecordPlugin arp) {
		arp.addMapping("college", "id", College.class);
		arp.addMapping("daily_work", "id", DailyWork.class);
		arp.addMapping("dictionary", "id", Dictionary.class);
		arp.addMapping("major", "id", Major.class);
		arp.addMapping("school", "id", School.class);
		arp.addMapping("taskbook", "id", Taskbook.class);
		arp.addMapping("teacher", "id", Teacher.class);
		arp.addMapping("user", "id", User.class);
	}
}

